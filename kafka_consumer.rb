require "kafka"
class KafkaConsumer

  def initialize(brokers)
    @brokers = brokers
  end

  def consume(topic)
    messages(topic)
  end

  private

  def messages(topic)
    kafka.each_message(topic: topic) do |message|
      puts message.offset, message.key, message.value
    end
  end

  def kafka
    @kafka ||= Kafka.new(@brokers)
  end
end



