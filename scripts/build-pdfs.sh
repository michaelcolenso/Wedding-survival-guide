#!/usr/bin/env bash
# WeddingForge PDF Build Script
# Run: bash scripts/build-pdfs.sh

set -e

REPO="/Users/michaelcolenso/Projects/Wedding-survival-guide"
CONTENT="$REPO/content"
OUT="$REPO/deliverables/pdfs"
CSS="$REPO/deliverables/style.css"
TMP="/tmp/wf-build"

mkdir -p "$TMP" "$OUT"

LAUNCH='{"args":["--no-sandbox","--disable-setuid-sandbox"]}'
PDF_OPTS='{"format":"Letter","margin":{"top":"1in","bottom":"1in","left":"1.1in","right":"1.1in"},"printBackground":true,"displayHeaderFooter":true,"footerTemplate":"<div style=\"font-size:9px;color:#aaa;width:100%;text-align:center;padding-bottom:8px;\"><span class=\"pageNumber\"></span> of <span class=\"totalPages\"></span></div>","headerTemplate":"<div></div>"}'

build() {
  local label="$1"
  local src="$2"
  cat "$src" > "$TMP/${label}.md"
  md-to-pdf --launch-options "$LAUNCH" --stylesheet "$CSS" --pdf-options "$PDF_OPTS" "$TMP/${label}.md" 2>&1 | grep -E "started|completed|error"
  mv "$TMP/${label}.pdf" "$OUT/${label}.pdf"
  echo "  $(du -sh "$OUT/${label}.pdf" | cut -f1)  →  ${label}.pdf"
}

echo "WeddingForge PDF Build"
echo "======================"

# Core Guide — built in two halves then merged (large file)
echo ""
echo "Core Guide (Part 1/2)..."
cat "$REPO/deliverables/cover.md" \
    "$CONTENT/core-playbook/01-survival-mindset.md" \
    "$CONTENT/core-playbook/02-foundation.md" \
    "$CONTENT/core-playbook/03-booking-phase.md" \
    "$CONTENT/core-playbook/04-execution-phase.md" > "$TMP/core-p1.md"
md-to-pdf --launch-options "$LAUNCH" --stylesheet "$CSS" "$TMP/core-p1.md" 2>&1 | grep -E "started|completed|error"

echo "Core Guide (Part 2/2)..."
cat "$CONTENT/core-playbook/05-final-countdown.md" \
    "$CONTENT/core-playbook/06-reception-playbook.md" \
    "$CONTENT/core-playbook/07-when-things-go-wrong.md" \
    "$CONTENT/core-playbook/appendices.md" > "$TMP/core-p2.md"
md-to-pdf --launch-options "$LAUNCH" --stylesheet "$CSS" "$TMP/core-p2.md" 2>&1 | grep -E "started|completed|error"

pdfunite "$TMP/core-p1.pdf" "$TMP/core-p2.pdf" "$OUT/WeddingForge-2026-Survival-Guide.pdf"
echo "  $(du -sh "$OUT/WeddingForge-2026-Survival-Guide.pdf" | cut -f1)  →  WeddingForge-2026-Survival-Guide.pdf"

# Lead Magnet
echo ""
echo "Lead Magnet..."
cp "$CONTENT/lead-magnet/wedding-survival-quick-start-checklist.md" "$TMP/lead.md"
md-to-pdf --launch-options "$LAUNCH" --stylesheet "$CSS" "$TMP/lead.md" 2>&1 | grep -E "started|completed|error"
mv "$TMP/lead.pdf" "$OUT/WeddingForge-2026-Free-Checklist.pdf"
echo "  $(du -sh "$OUT/WeddingForge-2026-Free-Checklist.pdf" | cut -f1)  →  WeddingForge-2026-Free-Checklist.pdf"

# Bonuses
echo ""
echo "Bonuses..."
build "WeddingForge-2026-Bonus1-Budget-Tracker"   "$CONTENT/bonuses/bonus-01-budget-tracker.md"
build "WeddingForge-2026-Bonus2-Notion-Dashboard" "$CONTENT/bonuses/bonus-02-notion-dashboard.md"
build "WeddingForge-2026-Bonus3-Video-Scripts"    "$CONTENT/bonuses/bonus-03-video-scripts.md"
build "WeddingForge-2026-Bonus4-Checklists"       "$CONTENT/bonuses/bonus-04-checklists.md"

echo ""
echo "======================"
echo "Done. All PDFs in: $OUT"
