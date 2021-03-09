# 💪💪💪 Optimize your workouts! 💪💪💪

_requirements: ruby 3.0.0 and rspec 3.10.0_

Running the sample and the tests, while in the directory:
```sh
ruby exercizer_optimizer.rb
rspec exerciser_spec.rb
```

Some important allies that helped me with this but don't show up in the imports: rubocop and pry!

Cool upgrades I perceive:
- Factory Girl to make the test scenario inputs cleaner
- Docker+Docker-Compose (could really help with local testing and running if it were to become a micro-service in the future)
- Validating (and testing) inputs
- Stress testing
- As much optimization as possible regarding cyclomatic complexity
- Prepare it for an API style microservice (inputs and outputs in JSON)! Could be cool to show it on the front-end, specially if there's some sort of GraphQL already around
- Define the inputs clearly with everyone to create a model for saving in DBs!