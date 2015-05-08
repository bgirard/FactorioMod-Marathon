all:
	mkdir -p build/marathon_0.5.2
	cp -R LICENSE README.md data.lua info.json prototypes build/marathon_0.5.2
	cd build && zip -r marathon_0.5.2.zip marathon_0.5.2

clean:
	rm -rf marathon_0.5.2
