#!/bin/bash
clear

echo Merging Agentic Version
./scripts/merge.sh


echo Generate PDF version
echo --Replace chars
 
cat "output/Thesis on Infinite Scale Expansion (ISE).agentic.md" |
sed 's/ℏ/$\\hbar$/g' |
sed 's/→/$\\to$/g' |
sed 's/↔/$\\leftrightarrow$/g' |
sed 's/⇒/$\\Rightarrow$/g' |
sed 's/⇔/$\\Leftrightarrow$/g' |
sed 's/∝/$\\propto$/g' |
sed 's/∩/$\\cap$/g' |
sed 's/∼/$\\sim$/g' |
sed 's/≙/$\\widehat{=}$/g' |
sed 's/≪/$\\ll$/g' |
sed 's/⊥/$\\perp$/g' |
sed 's/☉/$\\odot$/g' |
sed 's/𝜅/$\\kappa$/g' |
sed 's/ϰ/$\\kappa$/g' |
sed 's/𝜌/$\\rho$/g' |
sed 's/ϱ/$\\rho$/g' |
sed 's/^\*\*\*$/\\pagebreak/' > "output/Thesis on Infinite Scale Expansion (ISE).full.md"
# | pandoc --output="output/Thesis on Infinite Scale Expansion (ISE).full.pdf" -s -d scripts/pandoc.yml

echo --Create TEX
pandoc "output/Thesis on Infinite Scale Expansion (ISE).full.md" --output="output/Thesis on Infinite Scale Expansion (ISE).full.tex" -s -d scripts/pandoc.yml

echo --Create PDF
xelatex -interaction=batchmode -output-directory=output "output/Thesis on Infinite Scale Expansion (ISE).full.tex"
echo Done!