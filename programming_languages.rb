def reformat_languages(formatted_languages)
  reformatted = {}
  formatted_languages.each do |style, languages|
    languages.each do |language, properties|
      unless reformatted[language].nil?
        styles = reformatted[language][:style]
      else
        styles = []
      end
      reformatted[language] = {
        type: properties[:type],
        style: styles << style
      }
    end
  end
  reformatted

end

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
  }
}