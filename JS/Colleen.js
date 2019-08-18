/*
Comment1
*/
function bs(){return unescape("%2f");}
function main(){
/*
Comment2
*/
q=unescape("%27");
nl=unescape("%0a");
star=unescape("%2a");
s='%s%s%sComment1%s%s%s%sfunction bs(){return unescape("%2f");}%sfunction main(){%s%s%s%sComment2%s%s%s%sq=unescape("%27");%snl=unescape("%0a");%sstar=unescape("%2a");%ss=%s%s%s;%sconsole.log(s,bs(),star,nl,nl,star,bs(),nl,nl,nl,bs(),star,nl,nl,star,bs(),nl,nl,nl,nl,q,s,q,nl,nl,nl)%s}%smain()';
console.log(s,bs(),star,nl,nl,star,bs(),nl,nl,nl,bs(),star,nl,nl,star,bs(),nl,nl,nl,nl,q,s,q,nl,nl,nl)
}
main()
