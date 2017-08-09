gradle buildwar
cp build/distributions/war/verticofactory.war ../vertico-demo/vf/
docker build -t ajaycs14/vf:local ../vertico-demo/vf/
docker push ajaycs14/vf:local
