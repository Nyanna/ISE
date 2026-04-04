#!/bin/bash
clear

echo Merging Agentic Version
./scripts/merge.sh


echo Generate PDF version
 
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
sed 's/^\*\*\*$/\\pagebreak/' |
pandoc --output="output/Thesis on Infinite Scale Expansion (ISE).plain.pdf" -s -d scripts/pandoc.yml