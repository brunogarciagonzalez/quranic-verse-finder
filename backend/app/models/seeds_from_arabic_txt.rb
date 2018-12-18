# file obtained from:
# http://www.qurandatabase.org/

class SeedsFromArabicTxt
  def directory_iterator
    # create_table "chapters", force: :cascade do |t|
    #   t.integer "number"
    #   t.string "title"
    #   t.boolean "requires_addition_of_bismillah"
    # end
    # create_table "verses", force: :cascade do |t|
    #   t.integer "chapter_id"
    #   t.integer "number_in_chapter"
    #   t.text "content"
    # end
    Dir.glob('./texts/*.txt') do |txt_file_path|
      # do work on files ending in .txt in the 'texts directory
      # example of txt_file_path: "../texts/english.Mohammad_Habib_Shakir.txt"

      File.open( txt_file_path ).each do |line|
        # remove \n and \r via regex and gsub: /\r\n/ => ""
        clean_line = line.gsub(/\r\n/, "")
        #grab line chapter, verse number, verse text


        byebug
      end

    end

  end

  private

  def verse_content_parser(txt_file_line)
    # returns current verse content from line
    # !!! see Masjid Tucson .rb for newer split logic
    line.split("|")[2]
  end

  def chapter_number_parser(txt_file_line)
    # returns current chapter number
    txt_file_line.split("|")[0].to_i
  end

  def verse_number_parser(txt_file_line)
    # returns current chapter number
    txt_file_line.split("|")[1].to_i
  end


  def chapter_title_map
    {1=>"Al-Faatiha", 2=>"Al-Baqara", 3=>"Aal-i-Imraan", 4=>"An-Nisaa", 5=>"Al-Maaida", 6=>"Al-An'aam", 7=>"Al-A'raaf", 8=>"Al-Anfaal", 9=>"At-Tawba", 10=>"Yunus", 11=>"Hud", 12=>"Yusuf", 13=>"Ar-Ra'd", 14=>"Ibrahim", 15=>"Al-Hijr", 16=>"An-Nahl", 17=>"Al-Israa", 18=>"Al-Kahf", 19=>"Maryam", 20=>"Taa-Haa", 21=>"Al-Anbiyaa", 22=>"Al-Hajj", 23=>"Al-Muminoon", 24=>"An-Noor", 25=>"Al-Furqaan", 26=>"Ash-Shu'araa", 27=>"An-Naml", 28=>"Al-Qasas", 29=>"Al-Ankaboot", 30=>"Ar-Room", 31=>"Luqman", 32=>"As-Sajda", 33=>"Al-Ahzaab", 34=>"Saba", 35=>"Faatir", 36=>"Yaseen", 37=>"As-Saaffaat", 38=>"Saad", 39=>"Az-Zumar", 40=>"Ghafir", 41=>"Fussilat", 42=>"Ash-Shura", 43=>"Az-Zukhruf", 44=>"Ad-Dukhaan", 45=>"Al-Jaathiya", 46=>"Al-Ahqaf", 47=>"Muhammad", 48=>"Al-Fath", 49=>"Al-Hujuraat", 50=>"Qaaf", 51=>"Adh-Dhaariyat", 52=>"At-Tur", 53=>"An-Najm", 54=>"Al-Qamar", 55=>"Ar-Rahmaan", 56=>"Al-Waaqia", 57=>"Al-Hadid", 58=>"Al-Mujaadila", 59=>"Al-Hashr", 60=>"Al-Mumtahana", 61=>"As-Saff", 62=>"Al-Jumu'a", 63=>"Al-Munaafiqoon", 64=>"At-Taghaabun", 65=>"At-Talaaq", 66=>"At-Tahrim", 67=>"Al-Mulk", 68=>"Al-Qalam", 69=>"Al-Haaqqa", 70=>"Al-Ma'aarij", 71=>"Nooh", 72=>"Al-Jinn", 73=>"Al-Muzzammil", 74=>"Al-Muddaththir", 75=>"Al-Qiyaama", 76=>"Al-Insaan", 77=>"Al-Mursalaat", 78=>"An-Naba", 79=>"An-Naazi'aat", 80=>"Abasa", 81=>"At-Takwir", 82=>"Al-Infitaar", 83=>"Al-Mutaffifin", 84=>"Al-Inshiqaaq", 85=>"Al-Burooj", 86=>"At-Taariq", 87=>"Al-A'laa", 88=>"Al-Ghaashiya", 89=>"Al-Fajr", 90=>"Al-Balad", 91=>"Ash-Shams", 92=>"Al-Lail", 93=>"Ad-Dhuhaa", 94=>"Ash-Sharh", 95=>"At-Tin", 96=>"Al-Alaq", 97=>"Al-Qadr", 98=>"Al-Bayyina", 99=>"Az-Zalzala", 100=>"Al-Aadiyaat", 101=>"Al-Qaari'a", 102=>"At-Takaathur", 103=>"Al-Asr", 104=>"Al-Humaza", 105=>"Al-Fil", 106=>"Quraish", 107=>"Al-Maa'un", 108=>"Al-Kawthar", 109=>"Al-Kaafiroon", 110=>"An-Nasr", 111=>"Al-Masad", 112=>"Al-Ikhlaas", 113=>"Al-Falaq", 114=>"An-Naas"}
  end

end
