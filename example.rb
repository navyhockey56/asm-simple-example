# Run me with `ruby example.rb`

require_relative 'awkward'

example_asms = [
  AwkwardMath::AwkwardStateMachine.new(1,1),
  AwkwardMath::AwkwardStateMachine.new(1,2),
  AwkwardMath::AwkwardStateMachine.new(2,1),
  AwkwardMath::AwkwardStateMachine.new(2,2),
  AwkwardMath::AwkwardStateMachine.new(2,3),
  AwkwardMath::AwkwardStateMachine.new(3,2),
  AwkwardMath::AwkwardStateMachine.new(3,3)
];

example_asms.each { |asm| asm.run_machine(1000) };

example_asms.each do |asm|
  puts "-----------------------------------------------------------------------------"
  puts "ASM(#{asm.number_of_activators}, #{asm.initial_branch_length}):\n#{asm.lengths}"
end

exit 0
