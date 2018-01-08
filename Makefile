# kafka learning

kafka:
	cd kafka-single-node && docker-compose up -d

kafka-logs:
	cd kafka-single-node && docker-compose logs

consumer:
	cd consumer_example && go build && ./consumer_example 127.0.0.1:29092 cg1 testtopic

producer:
	cd producer_example && go build && ./producer_example 127.0.0.1:29092 testtopic

.PHONY: kafka kafka-logs consumer producer
