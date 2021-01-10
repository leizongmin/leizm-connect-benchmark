all:
	@./run.sh http.js
	@./run.sh express.js
	@./run.sh leizm-web.js
	@./run.sh hapi.js
	@./run.sh restify.js
	@./run.sh koa.js
	@./run.sh micro.js
	@echo | tee -a benchmarks.txt
	@echo 'Simple HTTP benchmark results (wrk) with close connection' | tee -a benchmarks.txt
	@sort -nr results.txt | tee -a benchmarks.txt
	@rm results.txt
	@./run.sh http.js keep-alive
	@./run.sh express.js keep-alive
	@./run.sh leizm-web.js keep-alive
	@./run.sh hapi.js keep-alive
	@./run.sh restify.js keep-alive
	@./run.sh koa.js keep-alive
	@./run.sh micro.js keep-alive
	@echo | tee -a benchmarks.txt
	@echo 'Simple HTTP benchmark results (wrk) with keep-alive connection' | tee -a benchmarks.txt
	@sort -nr results.txt | tee -a benchmarks.txt
	@rm results.txt

.PHONY: all
