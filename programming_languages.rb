def reformat_languages(languages)
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
end
