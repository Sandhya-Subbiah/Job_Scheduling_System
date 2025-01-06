clean:
	@if [ "$(OS)" = "Windows_NT" ]; then \
		del /Q *.o *.exe *.txt; \
	else \
		rm -f *.o *.exe *.txt; \
	fi

