1,$s/"@ Fr/"@fr/
1,$s/" @en/"@fr/
1,$s/" @$/"@fr./
1,$s/<http: /<http:/g
1,$s=<http:// =<http://=g
1,$s= / =/=g

1,$s=< Http:=<http:=g
1,$s= @ =@=g
1,$s= # =#=g

1,$s="@En\.="@fr.=
1,$s="@Fr\.="@fr.=

1,$s=<Http:=<http:=

1,$s/".@/"@/
1,$s/". @/"@/
1,$s/. En./@fr./
1,$s/"@ fr./"@fr./
1,$s/"@En/"@fr/
1,$s/"@en./"@fr./

# s=[^"].$="@fr.=