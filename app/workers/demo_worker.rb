class DemoWorker
  include Sidekiq::Worker

  def perform(name, count)
    # To create a job to be processed asynchronously:
      # DemoWorker.perform_async('bob', 5)
      # Note that perform is an instance method, whereas perform_async is called on the class.

    # You can also create a job to be processed in the future:
      # DemoWorker.perform_in(5.minutes, 'bob', 5)
  end
end