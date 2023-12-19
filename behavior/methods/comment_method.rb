# frozen_string_literal: true

# Q: How do you comment methods?
# A: Communicate information that is not obvious in a comment before the method. This should be rare and only used for truly obscure items:
# - Unclear method dependencies.
# - TODOs
# - Some unique change to an established pattern.
# Before writing a comment, first use patterns to refactor the code and, more often than not, it will be readable enough to remove the need for a comment. It is often possible to map the english in your comment directly onto method calls, variables, etc that becomes self-documenting.
class CommentMethod
end
