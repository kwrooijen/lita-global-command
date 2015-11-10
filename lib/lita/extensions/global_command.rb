module Lita
  module Extensions
    class GlobalCommand
      def self.call(payload)
        route = payload[:route]
        message = payload[:message]
        robot = payload[:robot]
        return true unless route.extensions[:global_command]
        return true if message.instance_variable_get("@command")
        return true if message.body =~ /#{robot.name}/
      end
    end
    Lita.register_hook(:validate_route, GlobalCommand)
  end
end
