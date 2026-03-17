# Gratitude Journal

A Rails application to collect and cherish the things you're grateful for.

## Features

- Create, read, update, and delete gratitude entries
- Beautiful Bootstrap 5 styled interface
- Responsive card-based layout

## Getting Started

### Prerequisites

- Ruby 3.2+
- Rails 8.1.2
- Node.js and Yarn
- SQLite3

### Setup

```bash
bundle install
yarn install
yarn build:css
bin/rails db:create db:migrate
bin/rails server
```

### Running Tests

```bash
# Run unit and integration tests
bin/rails test

# Run system tests (requires Chrome)
bin/rails test:system

# Run all tests
bin/rails test:all
```
