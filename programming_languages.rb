def reformat_languages(languages)
=begin
  style_hash = {}
  new_hash = {}

  languages.each do |style, att|
  att.each do |lang, type|
    if new_hash[lang] != lang
      new_hash[lang] = {}
    end
    type.each do |key, value|
      new_hash[lang][key] = value
      new_hash[lang][:style] = []
    end
    if languages[style].include?(lang)
      new_hash[lang][:style] << style
    end
  end
end
new_hash
=end
#=begin
  new_hash = {}
  languages.each do |att, style|
    style.each do |language, type|
      if !new_hash[language]
        new_hash[language] = {}
      end
      type.each do |key, value|
        new_hash[language][key] = value
      end
      if !new_hash[language][:style]
        new_hash[language][:style] = []
      end
      new_hash[language][:style] << att
    end
  end
  new_hash
#=end
end
