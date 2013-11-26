# Class: people::cutmail
#
#
class people::cutmail {
    # lib
    include wget
    include zsh
    include heroku
    include redis
    include mysql
    include imagemagick
    include postgresql

    # local application for develop
    include sequel_pro
    include virtualbox
    include sublime_text_2
    include cyberduck
   
    # local application for utility 
    include chrome::canary
    include sequel_pro
    include skype
    include hipchat

    package {
      'Kobito':
        source   => "http://kobito.qiita.com/download/Kobito_v1.8.4.zip",
        provider => compressed_app;
    }
}
