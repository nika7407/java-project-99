.DEFAULT_GOAL := build-run

setup:
	gradle wrapper --gradle-version 8.8

clean:
	./gradlew clean

build:
	./gradlew clean build

install:
	./gradlew clean install

run-dist:
	@./build/install/app/bin/app -h

run:
	./gradlew run

test:
	./gradlew test

report:
	./gradlew jacocoTestReport

lint:
	./gradlew checkstyleMain

check-deps:
	./gradlew dependencyUpdates -Drevision=release

build-run: build run

.PHONY: build