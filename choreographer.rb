require_relative 'kafka_producer'
require_relative 'kafka_consumer'

BROKERS = ['localhost:29092', 'localhost:32092']

message = 'hello world!'
topic = 'transactions'
key = 'test_key'

# Producer sends message with a topic to kafka server
KafkaProducer.new(BROKERS, topic, key).produce(message)

# Consumer reads messages of a specific topic from kafka server
consumer = KafkaConsumer.new(BROKERS).consume(topic)
consumer.consume
