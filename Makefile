all:
	@./run http.js
	@./run express.js
	@./run leizm-web.js
	@./run hapi.js
	@./run restify.js
	@./run koa.js
	@./run micro.js
	@echo | tee -a benchmarks.txt
	@echo 'Simple HTTP benchmark results (wrk) with close connection' | tee -a benchmarks.txt
	@sort -nr results.txt | tee -a benchmarks.txt
	@rm results.txt
	@./run http.js keep-alive
	@./run express.js keep-alive
	@./run leizm-web.js keep-alive
	@./run hapi.js keep-alive
	@./run restify.js keep-alive
	@./run koa.js keep-alive
	@./run micro.js keep-alive
	@echo | tee -a benchmarks.txt
	@echo 'Simple HTTP benchmark results (wrk) with keep-alive connection' | tee -a benchmarks.txt
	@sort -nr results.txt | tee -a benchmarks.txt
	@rm results.txt

.PHONY: all
