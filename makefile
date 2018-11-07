final: UtPodDriver.o UtPod.o Song.o
	g++ -o test  UtPodDriver.o UtPod.o Song.o
driver: UtPodDriver.cpp UtPod.h Song.h
	g++ UtPodDriver.cpp
UtPod.o: UtPod.cpp UtPod.h Song.h
	g++ UtPod.cpp -c
Song.o: Song.cpp Song.h
	g++ Song.cpp -c
UtPodDriver.o: UtPodDriver.cpp UtPod.h Song.h
	g++ UtPodDriver.cpp -c
