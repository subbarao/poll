require 'open-uri'
class Mp < Seat

  def self.search!
    url = 'http://en.wikipedia.org/wiki/Andhra_Pradesh_Legislative_Assembly_election,_2014'
    page = Nokogiri::HTML(open(url))
    self.destroy_all
    seat = page.css(".wikitable")[3]
    district = nil
    parties = []
    seat.css("tr").each do | tr |
      if tr.css("th").length > 1
        ths = tr.css("th")
        ths[4, ths.length].each do | th |
          parties.push(Party.find_or_create_by(name: th.text.strip))
        end
      else
        tds = tr.css("td")
        if tr.css("th").length == 1
          district = tr.css("th")[0].text.strip
          district = District.find_or_create_by(name: district)
        end
        name = tds[1].text.strip
        mp = self.create(name: name, district: district, incumbent: tds[2].text.strip)

        tds[4, tds.length].each_with_index do | td, i |
          next if td.text.strip.blank?
          Nomination.create(party: parties[i], candidate: td.text.strip, seat: mp)
        end
      end
    end
  end
end
