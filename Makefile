all:
	rm -rf build/
	mkdir build/
	mkdir build/marathon_0.5.3
	cp -R LICENSE README.md data.lua info.json prototypes build/marathon_0.5.3
	cd build && zip -r marathon_0.5.3.zip marathon_0.5.3
clean:
	rm -rf build/
