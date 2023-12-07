require 'kafka'

class KafkaProducer

  def initialize(brokers, topic, key)
    @brokers = brokers
    @topic = topic
    @key = key
  end

  def produce(message)
    kafka_process(message)
  end

  private

  def kafka_process(message)
    kafka = Kafka.new(@brokers, client_id: 'microservice 1')
    kafka.deliver_message(message, key: @key, topic: @topic)
  end
end
