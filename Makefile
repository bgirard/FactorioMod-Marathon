all:
	mkdir -p build/marathon_0.5.1
	cp -R LICENSE README.md data.lua info.json prototypes build/marathon_0.5.1
	cd build && zip -r marathon_0.5.1.zip marathon_0.5.1

clean:
	rm -rf marathon_0.5.1
