require_relative 'kafka_producer'
require_relative 'kafka_consumer'

BROKERS = ['localhost:29092', 'localhost:32092']

message = 'hello world!'
topic = 'transactions'
key = 'test_key'

KafkaProducer.new(BROKERS, topic, key).produce(message)
consumer = KafkaConsumer.new(BROKERS).consume(topic)
consumer.consume
