module Gitlab
  module Ci
    module Build
      module Policy
        class Kubernetes < Policy::Specification
          def initialize(spec)
            unless spec.to_sym == :active
              raise UnknownPolicyError
            end
          end

          def satisfied_by?(pipeline, seed = nil)
            pipeline.has_kubernetes_active?
          end
        end
      end
    end
  end
end
