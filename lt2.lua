--[[ ST_Obfuscator Ver[ ST.1.4.Obfuscator ] Obfuscator And DevelopObfuscator By GartolSJ#2873 And HelpDevelop By NCDev ]]--

local GartoLSJ = ('ST_Obfuscator Ver[ ST.1.4.Obfuscator ] Obfuscator And DevelopObfuscator By GartolSJ#2873') local f=string.byte;local G=string.char;local c=string.sub;local H=table.concat;local l=table.insert;local r=math.ldexp;local C=getfenv or function()return _ENV end;local s=setmetatable;local h=select;local a=unpack or table.unpack;local d=tonumber;local function I(i)local e,n,o="","",{}local a=256;local t={}for l=0,a-1 do t[l]=G(l)end;local l=1;local function f()local e=d(c(i,l,l),36)l=l+1;local n=d(c(i,l,l+e-1),36)l=l+e;return n end;e=G(f())o[1]=e;while l<#i do local l=f()if t[l]then n=t[l]else n=e..c(e,1,1)end;t[a]=e..c(n,1,1)o[#o+1],e,a=n,n,a+1 end;return table.concat(o)end;local d=I('21L21827521A21227521821S21V22522022N22G22M21X21U22321A21427922322521T22121A21727922S22G22G22K22Z22122G21A22S27921W27W22K22N1M131322M22522J1222321X22G21W22H22622H22N22122M22721V21U22G22128S1228Q21T1322C22S22122K22G2271322V22522I21V1123D22T1122O21X22628C22M22D1321T22527I1322N21V22H28P2211221S22H22521A21127923322M22122528T29F22621A1E27929M2202211C22622D1C22Q22R22R23223723123I22P2391C23E22R23E22V23123E23I23122Q22V22Z23122P22X23923C21A21027922P21X22021U21X22328521A21627922Q22122J23C2252A827M27522W22H22K27R2782752BM22J23J22122722G21X28R2772BL2BN23C22122C22G23221V22C21A21K27923F27H28T1C22T28T21T2AI27P2AE21W28O27R21G2CK2CM2AE28H2212CR21U2CT1C22G21V1C22N22K28D21U29Z2C922J23222H27W2C71V2792C221S2C322G1C22J21X2A32D72D92DB2DD1C2D22CR22521U2201C2A322K21S2252272AE2DT2DV2D82DA2DC22J2DE21I2792E72E92EB2DS2DU2AE2EF2DY2EI2E02CQ2C82BZ2BN22V22122D22627I2202EX2182D82232232DP1C22322H21X27L27922X21U22H21T27S2792F022D23321V2AD21A1W27923I2BG2852FQ28S22M21V21S1927921Q21D2792192G52752G921A2791C2GB2182G921B21821Q2752GJ2BS2792GH2182GJ2GP2GT2GD2GT2GC2182GF2GQ2752152GK2762182BK2752GL2GR21827T2792G42GI2182GD1C2BA2GD2G92BA2H827M2A02GU21827M2HG2GM2HF2182782H82H22HO2GP2GJ2H22HS2HQ2H92132H32H52182FU2H727527T1X27921A2HK2GT218182I42BA2G91C27427M2GJ1Y2GK21R2I81Z2G52IU27T21O2IF2IH2G927921E2IL2GQ2GZ2IQ21821P2I72BK2H82I727T2JE2H82BA2IU2752GZ2BA2BA2CJ2JM2182BA2742162HY2HU2G92J32JE2GT2IK2HN2H0102G82792GS2H02HF2HZ23I22X23122O23J23G23123F22Q2GV2GK2K72J32752K42GG2II2192IW2762BA27522T21U27F2E32EB21A2K721U2BN2FG27523C21V2G22L621827O27Q2FM27523G2E922D28O22N21A2I627522O21V22722521S2LH2252LJ22M2B92792322EA21Z2DC22721Z21A2IS27523I22122L2FE2A322N22S2E32202DP2GC2GO22Q2CT21A2G42752DO2DQ2EP2EE2DX2EH21U1C2MG2E62922EN2EC2EQ2LF2182L82G223C21X22K21A2742M82N02EA2AE23F2EQ2DW2EG2DD2LY27522X2MB2N92BW2F52HB21828Q21U2L42C42J02H72H62K82GZ2GP2GD2H82HE2IB2HU2GO2GZ2GD2GD2H22OB2HU2BK2OF2GD2NT2IF2HU1S2GP2BA2A02ON2792782I62OR2752FU2IE2GZ2KN2IS2OZ2GQ2IW2IG2H92K02GQ2GJ2J32KP2K82KN2KK2LM2LZ2DJ2D821U1T22W21V2EI2N42NV2NX22G2O11C142PC2GY2742JX2OG2H22KM2H02JZ2GP2IK2HE2PA2K52KQ2HA2IF2O12BP22M2232802BJ27923G2252A328S2M627922Y2F42QP22M27F23321W21X21S2F52H22LO27I2211T2NM2182CP2D32ML2LE2QZ21823E2LS22H27R2KA2KC2KE2KG2KI2KT2II2GP2O32K52RO2H42RQ2H92H82GD2GO2HP2GD2O12182IS2KN2142O32S12752JB2II1C2CJ2GP2IN2II2I32GP2H22O62QA2752NZ2752BK2Q72Q92GW2K82R42L82F92DP29C2RW2S72GT2IO2SP21821M2OL2SN2K82II');local o=bit and bit.bxor or function(l,n)local e,o=1,0 while l>0 and n>0 do local c,a=l%2,n%2 if c~=a then o=o+e end l,n,e=(l-c)/2,(n-a)/2,e*2 end if l<n then l=n end while l>0 do local n=l%2 if n>0 then o=o+e end l,e=(l-n)/2,e*2 end return o end local function n(n,l,e)if e then local l=(n/2^(l-1))%2^((e-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(n%(l+l)>=l)and 1 or 0;end;end;local l=1;local function e()local a,n,e,c=f(d,l,l+3);a=o(a,44)n=o(n,44)e=o(e,44)c=o(c,44)l=l+4;return(c*16777216)+(e*65536)+(n*256)+a;end;local function i()local e=o(f(d,l,l),44);l=l+1;return e;end;local function t()local n,e=f(d,l,l+2);n=o(n,44)e=o(e,44)l=l+2;return(e*256)+n;end;local function A()local o=e();local l=e();local c=1;local o=(n(l,1,20)*(2^32))+o;local e=n(l,21,31);local l=((-1)^n(l,32));if(e==0)then if(o==0)then return l*0;else e=1;c=0;end;elseif(e==2047)then return(o==0)and(l*(1/0))or(l*(0/0));end;return r(l,e-1023)*(c+(o/(2^52)));end;local I=e;local function r(e)local n;if(not e)then e=I();if(e==0)then return'';end;end;n=c(d,l,l+e-1);l=l+e;local e={}for l=1,#n do e[l]=G(o(f(c(n,l,l)),44))end return H(e);end;local l=e;local function I(...)return{...},h('#',...)end local function H()local f={};local d={};local l={};local G={f,d,nil,l};local l=e()local c={}for n=1,l do local e=i();local l;if(e==1)then l=(i()~=0);elseif(e==0)then l=A();elseif(e==2)then l=r();end;c[n]=l;end;for d=1,e()do local l=i();if(n(l,1,1)==0)then local o=n(l,2,3);local a=n(l,4,6);local l={t(),t(),nil,nil};if(o==0)then l[3]=t();l[4]=t();elseif(o==1)then l[3]=e();elseif(o==2)then l[3]=e()-(2^16)elseif(o==3)then l[3]=e()-(2^16)l[4]=t();end;if(n(a,1,1)==1)then l[2]=c[l[2]]end if(n(a,2,2)==1)then l[3]=c[l[3]]end if(n(a,3,3)==1)then l[4]=c[l[4]]end f[d]=l;end end;for l=1,e()do d[l-1]=H();end;G[3]=i();return G;end;local function f(l,d,t)local e=l[1];local n=l[2];local l=l[3];return function(...)local o=e;local G=n;local c=l;local r=I local n=1;local i=-1;local C={};local I={...};local H=h('#',...)-1;local h={};local e={};for l=0,H do if(l>=c)then C[l-c]=I[l+1];else e[l]=I[l+1];end;end;local l=H-c+1 local l;local c;while true do l=o[n];c=l[1];if c<=21 then if c<=10 then if c<=4 then if c<=1 then if c>0 then e[l[2]]=f(G[l[3]],nil,t);else local t;local c;e[l[2]]=d[l[3]];n=n+1;l=o[n];e[l[2]]=e[l[3]][l[4]];n=n+1;l=o[n];e[l[2]]=e[l[3]][l[4]];n=n+1;l=o[n];c=l[2];t=e[l[3]];e[c+1]=t;e[c]=t[l[4]];n=n+1;l=o[n];e[l[2]]=l[3];n=n+1;l=o[n];c=l[2]e[c]=e[c](a(e,c+1,l[3]))n=n+1;l=o[n];if e[l[2]]then n=n+1;else n=l[3];end;end;elseif c<=2 then local n=l[2];local o=e[l[3]];e[n+1]=o;e[n]=o[l[4]];elseif c==3 then t[l[3]]=e[l[2]];else do return end;end;elseif c<=7 then if c<=5 then local G=G[l[3]];local i;local c={};i=s({},{__index=function(e,l)local l=c[l];return l[1][l[2]];end,__newindex=function(n,l,e)local l=c[l]l[1][l[2]]=e;end;});for a=1,l[4]do n=n+1;local l=o[n];if l[1]==18 then c[a-1]={e,l[3]};else c[a-1]={d,l[3]};end;h[#h+1]=c;end;e[l[2]]=f(G,i,t);elseif c==6 then local i;local c;e[l[2]]=t[l[3]];n=n+1;l=o[n];e[l[2]]=e[l[3]][l[4]];n=n+1;l=o[n];e[l[2]]=l[3];n=n+1;l=o[n];e[l[2]]=t[l[3]];n=n+1;l=o[n];e[l[2]]=e[l[3]][l[4]];n=n+1;l=o[n];e[l[2]]=e[l[3]][l[4]];n=n+1;l=o[n];e[l[2]]=e[l[3]][l[4]];n=n+1;l=o[n];c=l[2]e[c]=e[c](a(e,c+1,l[3]))n=n+1;l=o[n];e[l[2]][l[3]]=l[4];n=n+1;l=o[n];e[l[2]][l[3]]=l[4];n=n+1;l=o[n];e[l[2]][l[3]]=l[4];n=n+1;l=o[n];e[l[2]]=e[l[3]][l[4]];n=n+1;l=o[n];c=l[2];i=e[l[3]];e[c+1]=i;e[c]=i[l[4]];else local l=l[2]e[l]=e[l]()end;elseif c<=8 then local t;local c;c=l[2];t=e[l[3]];e[c+1]=t;e[c]=t[l[4]];n=n+1;l=o[n];e[l[2]]=l[3];n=n+1;l=o[n];c=l[2]e[c]=e[c](a(e,c+1,l[3]))n=n+1;l=o[n];c=l[2];t=e[l[3]];e[c+1]=t;e[c]=t[l[4]];n=n+1;l=o[n];e[l[2]]=l[3];n=n+1;l=o[n];c=l[2]e[c]=e[c](a(e,c+1,l[3]))n=n+1;l=o[n];c=l[2];t=e[l[3]];e[c+1]=t;e[c]=t[l[4]];n=n+1;l=o[n];e[l[2]]=l[3];n=n+1;l=o[n];e[l[2]]=l[3];elseif c>9 then e[l[2]]=e[l[3]][l[4]];else local n=l[2]local o,l=r(e[n](a(e,n+1,l[3])))i=l+n-1 local l=0;for n=n,i do l=l+1;e[n]=o[l];end;end;elseif c<=15 then if c<=12 then if c>11 then t[l[3]]=e[l[2]];else local l=l[2]e[l]=e[l](a(e,l+1,i))end;elseif c<=13 then if e[l[2]]then n=n+1;else n=l[3];end;elseif c==14 then e[l[2]]=t[l[3]];else e[l[2]]=f(G[l[3]],nil,t);end;elseif c<=18 then if c<=16 then local l=l[2]e[l](e[l+1])elseif c>17 then e[l[2]]=e[l[3]];else e[l[2]]=d[l[3]];end;elseif c<=19 then e[l[2]]=l[3];elseif c==20 then e[l[2]]=e[l[3]][l[4]];n=n+1;l=o[n];e[l[2]]=e[l[3]][l[4]];n=n+1;l=o[n];e[l[2]]=e[l[3]][l[4]];n=n+1;l=o[n];e[l[2]]=t[l[3]];n=n+1;l=o[n];e[l[2]][l[3]]=e[l[4]];else local n=l[2];local o=e[l[3]];e[n+1]=o;e[n]=o[l[4]];end;elseif c<=32 then if c<=26 then if c<=23 then if c>22 then e[l[2]]=t[l[3]];else local l=l[2]e[l](e[l+1])end;elseif c<=24 then local n=l[2]e[n](a(e,n+1,l[3]))elseif c==25 then local l=l[2]e[l]=e[l](a(e,l+1,i))else e[l[2]][l[3]]=e[l[4]];end;elseif c<=29 then if c<=27 then local n=l[2]local o,l=r(e[n](a(e,n+1,l[3])))i=l+n-1 local l=0;for n=n,i do l=l+1;e[n]=o[l];end;elseif c>28 then local f;local G,h;local d;local c;e[l[2]]=t[l[3]];n=n+1;l=o[n];e[l[2]]=t[l[3]];n=n+1;l=o[n];c=l[2];d=e[l[3]];e[c+1]=d;e[c]=d[l[4]];n=n+1;l=o[n];e[l[2]]=l[3];n=n+1;l=o[n];c=l[2]G,h=r(e[c](a(e,c+1,l[3])))i=h+c-1 f=0;for l=c,i do f=f+1;e[l]=G[f];end;n=n+1;l=o[n];c=l[2]e[c]=e[c](a(e,c+1,i))n=n+1;l=o[n];c=l[2]e[c]=e[c]()n=n+1;l=o[n];e[l[2]]=e[l[3]][l[4]];n=n+1;l=o[n];e[l[2]]=l[3];n=n+1;l=o[n];e[l[2]]=l[3];else e[l[2]][l[3]]=l[4];end;elseif c<=30 then local i;local c;c=l[2]e[c](a(e,c+1,l[3]))n=n+1;l=o[n];c=l[2];i=e[l[3]];e[c+1]=i;e[c]=i[l[4]];n=n+1;l=o[n];e[l[2]]=l[3];n=n+1;l=o[n];e[l[2]]=l[3];n=n+1;l=o[n];e[l[2]]=t[l[3]];n=n+1;l=o[n];e[l[2]]=e[l[3]][l[4]];n=n+1;l=o[n];e[l[2]]=e[l[3]][l[4]];elseif c>31 then n=l[3];else e[l[2]][l[3]]=e[l[4]];end;elseif c<=38 then if c<=35 then if c<=33 then local l=l[2]e[l]=e[l]()elseif c>34 then e[l[2]]=l[3];else e[l[2]]=d[l[3]];end;elseif c<=36 then local n=l[2]e[n](a(e,n+1,l[3]))elseif c==37 then local n=l[2]e[n]=e[n](a(e,n+1,l[3]))else local i=G[l[3]];local a;local c={};a=s({},{__index=function(e,l)local l=c[l];return l[1][l[2]];end,__newindex=function(n,l,e)local l=c[l]l[1][l[2]]=e;end;});for a=1,l[4]do n=n+1;local l=o[n];if l[1]==18 then c[a-1]={e,l[3]};else c[a-1]={d,l[3]};end;h[#h+1]=c;end;e[l[2]]=f(i,a,t);end;elseif c<=41 then if c<=39 then n=l[3];elseif c==40 then e[l[2]]=e[l[3]][l[4]];else e[l[2]][l[3]]=l[4];end;elseif c<=42 then if e[l[2]]then n=n+1;else n=l[3];end;elseif c>43 then do return end;else local n=l[2]e[n]=e[n](a(e,n+1,l[3]))end;n=n+1;end;end;end;return f(H(),{},C())();