BASEPATH=schedule/nicar-2018-schedule
.PHONY: schedule 

schedule: scripts/scrape.py
	python ./scripts/scrape.py
