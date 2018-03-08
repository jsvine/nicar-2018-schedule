.PHONY: schedule diff

schedule: scripts/scrape.py
	python ./scripts/scrape.py

README.md: schedule/nicar-2018-schedule.csv
	sed -i "" -E "s/\*Last updated [^\*]+/*Last updated $$(TZ=America/Chicago date +"%B %-d, %Y @ %-l:%M%p Chicago time")/" README.md

diff:
	git diff --word-diff --word-diff-regex="[^, ]+"
