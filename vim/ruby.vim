autocmd BufRead {*_spec.rb,spec_helper.rb} syn keyword rubyRspec
      \ after
      \ aggregate_failures
      \ before
      \ class_double
      \ context
      \ describe
      \ described_class
      \ double
      \ expect
      \ include_context
      \ include_examples
      \ instance_double
      \ it
      \ it_should_behave_like
      \ it_behaves_like
      \ its
      \ let
      \ object_double
      \ raise_error
      \ scenario
      \ setup
      \ shared_context
      \ shared_examples
      \ shared_examples_for
      \ specify
      \ subject
      \ xit

highlight def link rubyRspec Function
