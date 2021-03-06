#!/bin/bash

UN=`whoami`.tmk
RD=/tmp/$UN
if [ ! -d $RD ]; then
   mkdir -m 755 $RD
fi
TDSDIR=tds
TDS=$RD/$TDSDIR
if [ ! -d $TDS ]; then
   mkdir -m 755 $TDS
fi
#
echo "LATEX files"
if [ ! -d  $TDS/tex ]; then
   mkdir -m 755 $TDS/tex
fi
if [ ! -d $TDS/tex/latex ]; then
   mkdir -m 755 $TDS/tex/latex
fi
if [ -d $TDS/tex/latex/minitoc ]; then
   \rm -rf $TDS/tex/latex/minitoc
fi
mkdir -m 755 $TDS/tex/latex/minitoc

for i in \
UKenglish.mld \
USenglish.mld \
acadian.mld \
acadien.mld \
afrikaan.mld \
afrikaans.mld \
albanian.mld \
american.mld \
arab.mld \
arab2.mld \
arabi.mld \
arabic.mld \
armenian.mld \
australian.mld \
austrian.mld \
bahasa.mld \
bahasai.mld \
bahasam.mld \
bangla.mld \
basque.mld \
bengali.mld \
bicig.mld \
bicig2.mld \
bicig3.mld \
bithe.mld \
brazil.mld \
brazilian.mld \
breton.mld \
british.mld \
bulgarian.mld \
bulgarianb.mld \
buryat.mld \
buryat2.mld \
canadian.mld \
canadien.mld \
castillan.mld \
castillian.mld \
catalan.mld \
chinese1.mld \
chinese1.mlo \
chinese2.mld \
chinese2.mlo \
croatian.mld \
czech.mld \
danish.mld \
devanagari.mld \
dutch.mld \
english.mld \
english1.mld \
english2.mld \
esperant.mld \
esperanto.mld \
estonian.mld \
ethiopia.mld \
ethiopian.mld \
ethiopian2.mld \
farsi1.mld \
farsi1.mlo \
farsi2.mld \
farsi2.mlo \
farsi3.mld \
finnish.mld \
finnish2.mld \
francais.mld \
french.mld \
french1.mld \
french2.mld \
frenchb.mld \
frenchle.mld \
frenchpro.mld \
galician.mld \
german.mld \
germanb.mld \
germanb2.mld \
greek-mono.mld \
greek-polydemo.mld \
greek-polykatha.mld \
greek.mld \
guarani.mld \
hangul-u8.mld \
hangul-u8.mlo \
hangul1.mld \
hangul1.mlo \
hangul2.mld \
hangul2.mlo \
hangul3.mld \
hangul3.mlo \
hangul4.mld \
hangul4.mlo \
hanja-u8.mld \
hanja-u8.mlo \
hanja1.mld \
hanja1.mlo \
hanja2.mld \
hanja2.mlo \
hebrew.mld \
hebrew2.mld \
hindi-modern.mld \
hindi.mld \
hungarian.mld \
icelandic.mld \
indon.mld \
indonesian.mld \
interlingua.mld \
irish.mld \
italian.mld \
italian2.mld \
japanese.mld \
japanese.mlo \
japanese2.mld \
japanese2.mlo \
japanese3.mld \
japanese3.mlo \
japanese4.mld \
japanese4.mlo \
japanese5.mld \
japanese5.mlo \
japanese6.mld \
japanese6.mlo \
kannada.mld \
khalkha.mld \
latin.mld \
latin2.mld \
latinc.mld \
latinc2.mld \
latvian.mld \
latvian2.mld \
letton.mld \
letton2.mld \
lithuanian.mld \
lithuanian2.mld \
lowersorbian.mld \
lsorbian.mld \
magyar.mld \
magyar2.mld \
magyar3.mld \
malay.mld \
malayalam-b.mld \
malayalam-keli.mld \
malayalam-keli2.mld \
malayalam-mr.mld \
malayalam-omega.mld \
malayalam-omega.mlo \
malayalam-rachana.mld \
malayalam-rachana2.mld \
malayalam-rachana3.mld \
manju.mld \
mexican.mld \
meyalu.mld \
minitoc.sty \
mongol.mld \
mongolb.mld \
mongolian.mld \
mtcmess.sty \
mtcoff.sty \
mtcpatchmem.sty \
naustrian.mld \
newzealand.mld \
ngerman.mld \
ngermanb.mld \
ngermanb2.mld \
norsk.mld \
norsk2.mld \
nynorsk.mld \
nynorsk2.mld \
occitan.mld \
occitan2.mld \
polish.mld \
polish2.mld \
polski.mld \
portuges.mld \
portuguese.mld \
romanian.mld \
romanian2.mld \
romanian3.mld \
russian-cca.mld \
russian-cca.mlo \
russian-cca1.mld \
russian-cca1.mlo \
russian-lh.mld \
russian-lh.mlo \
russian-lhcyralt.mld \
russian-lhcyralt.mlo \
russian-lhcyrkoi.mld \
russian-lhcyrkoi.mlo \
russian-lhcyrwin.mld \
russian-lhcyrwin.mlo \
russian.mld \
russian2m.mld \
russian2o.mld \
russianb.mld \
russianc.mld \
samin.mld \
scottish.mld \
serbian.mld \
serbianc.mld \
slovak.mld \
slovene.mld \
spanish.mld \
spanish2.mld \
spanish3.mld \
spanish4.mld \
swahili.mld \
swedish.mld \
swedish2.mld \
thai.mld \
thai.mlo \
turkish.mld \
uighur.mld \
uighur2.mld \
uighur3.mld \
ukraineb.mld \
ukrainian.mld \
uppersorbian.mld \
usorbian.mld \
vietnam.mld \
vietnamese.mld \
welsh.mld \
xalx.mld \
xalx2.mld \
xalx3.mld
do
   cp $i $TDS/tex/latex/minitoc
   chmod 744 $TDS/tex/latex/minitoc/$i
done
#
echo "DOCUMENTATION files"
if [ ! -d $TDS/doc ]; then
   mkdir -m 755 $TDS/doc
fi
if [ ! -d $TDS/doc/latex ]; then
   mkdir -m 755 $TDS/doc/latex
fi
if [ -d $TDS/doc/latex/minitoc ]; then
   \rm -rf $TDS/doc/latex/minitoc
fi
mkdir -m 755 $TDS/doc/latex/minitoc
# include .bst, .bib, .ist, .dtx, .ins, scripts, here,
# since they need all the other doc files .
for i in \
INSTALL \
README.md \
TODO \
en-mtc.bst \
fr-mtc.bst \
minitoc-fr.bib \
minitoc.bib \
minitoc-fr.ist \
minitoc.ist \
minitoc-fr.dtx \
minitoc.dtx \
minitoc.ins \
cmk emk fmk imk pmk rmk tmk xmk \
minitoc-fr.lan \
minitoc-fr.pdf \
minitoc.bug \
minitoc.l \
minitoc.lan \
minitoc.pdf \
minitoc.pre \
minitoc.sum \
boldsc.sty \
dblaccnt.sty \
franc.sty \
frbib.sty \
frnew.sty \
mypatches.sty
do
   cp $i $TDS/doc/latex/minitoc
done
echo "EXAMPLE files"
mkdir -m 755 $TDS/doc/latex/minitoc/examples

for i in \
mtc-2c.pdf \
mtc-2c.tex \
mtc-2nd.pdf \
mtc-2nd.tex \
mtc-3co.pdf \
mtc-3co.tex \
mtc-add.pdf \
mtc-add.tex \
mtc-add.bib \
mtc-ads.pdf \
mtc-ads.tex \
mtc-amm.pdf \
mtc-amm.tex \
mtc-apx.pdf \
mtc-apx.tex \
mtc-art.pdf \
mtc-art.tex \
mtc-bk.pdf \
mtc-bk.tex \
mtc-bo.pdf \
mtc-bo.tex \
mtc-ch0.pdf \
mtc-ch0.tex \
mtc-cri.pdf \
mtc-cri.tex \
mtc-fko.pdf \
mtc-fko.tex \
mtc-fo1.pdf \
mtc-fo1.tex \
mtc-fo2.pdf \
mtc-fo2.tex \
mtc-gap.pdf \
mtc-gap.tex \
mtc-hi1.pdf \
mtc-hi1.tex \
mtc-hi2.pdf \
mtc-hi2.tex \
mtc-hia.pdf \
mtc-hia.tex \
mtc-hir.pdf \
mtc-hir.tex \
mtc-hop.pdf \
mtc-hop.tex \
mtc-liv.pdf \
mtc-liv.tex \
mtc-mem.pdf \
mtc-mem.tex \
mtc-mm1.pdf \
mtc-mm1.tex \
mtc-mu.pdf \
mtc-mu.tex \
mtc-nom.pdf \
mtc-nom.tex \
mtc-ocf.pdf \
mtc-ocf.tex \
mtc-ofs.pdf \
mtc-ofs.tex \
mtc-sbf.pdf \
mtc-sbf.tex \
mtc-scr.pdf \
mtc-scr.tex \
mtc-syn.pdf \
mtc-syn.tex \
mtc-tbi.pdf \
mtc-tbi.tex \
mtc-tlc.pdf \
mtc-tlc.tex \
mtc-tsf.pdf \
mtc-tsf.tex \
mtc-vti.pdf \
mtc-vti.tex 
do
  cp $i $TDS/doc/latex/minitoc/examples/
done
#
echo "IMAGE files"
mkdir -m 755 $TDS/doc/latex/minitoc/images
for i in \
  lamed3.png 
do
  cp $i $TDS/doc/latex/minitoc/images/
  chmod 644 $TDS/doc/latex/minitoc/images/$i
done
#
echo "MINITOC-TDS.ZIP"
WD=`pwd`
cd $RD/$TDSDIR
\rm -f minitoc-tds.zip
\rm -f minitoc.tds.zip
zip -r minitoc.tds.zip * -i \*
cd $WD
