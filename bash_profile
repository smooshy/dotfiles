
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ $- == *i* ]]   &&   . $HOME/src/git-prompt/git-prompt.sh

[ -r ~/.bashrc ] && source ~/.bashrc

# cert.pem file for openssl 
export SSL_CERT_FILE=/usr/local/etc/openssl/certs/cert.pem
