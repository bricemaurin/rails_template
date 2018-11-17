Base rails 5 app including:

- bootstrap 4
- font awesome 5
- devise
- sidekiq, incl. admin (need redis on heroku)


# How to Use

- Terminal > 1st tab:

```redis-server```

- Terminal > 2nd tab:

```puma -t 10:15 -w 5```

- Terminal > 3rd tab:

```bundle exec sidekiq -c 10```

# Purge queue

Sidekiq.redis { |conn| conn.flushdb }