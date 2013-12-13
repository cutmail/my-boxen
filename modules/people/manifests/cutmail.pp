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
    include pow
    include python
    include tmux
    include macvim
    include vim

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
    include dropbox

    # readlineの接続先直す | iii ThreeTreesLight
    # http://threetreeslight.com/post/58786169382/readline
    exec{ "replace_readline_of_ruby" :
      command => "find /opt/boxen/rbenv -name readline.bundle -exec install_name_tool -change /usr/lib/libedit.3.dylib `find /opt/boxen -name libreadline.dylib` {} \\;",
    }

    package {
      'Kobito':
        source   => "http://kobito.qiita.com/download/Kobito_v1.8.4.zip",
        provider => compressed_app;
    }
}
