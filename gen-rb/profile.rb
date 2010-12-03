#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'musicbox_types'

module Profile
  class Client
    include ::Thrift::Client

    def login(username, password, version, useragent, uuid)
      send_login(username, password, version, useragent, uuid)
      return recv_login()
    end

    def send_login(username, password, version, useragent, uuid)
      send_message('login', Login_args, :username => username, :password => password, :version => version, :useragent => useragent, :uuid => uuid)
    end

    def recv_login()
      result = receive_message(Login_result)
      return result.success unless result.success.nil?
      raise result.ouch unless result.ouch.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'login failed: unknown result')
    end

    def getNextPlayer(sessionID)
      send_getNextPlayer(sessionID)
      return recv_getNextPlayer()
    end

    def send_getNextPlayer(sessionID)
      send_message('getNextPlayer', GetNextPlayer_args, :sessionID => sessionID)
    end

    def recv_getNextPlayer()
      result = receive_message(GetNextPlayer_result)
      return result.success unless result.success.nil?
      raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'getNextPlayer failed: unknown result')
    end

  end

  class Processor
    include ::Thrift::Processor

    def process_login(seqid, iprot, oprot)
      args = read_args(iprot, Login_args)
      result = Login_result.new()
      begin
        result.success = @handler.login(args.username, args.password, args.version, args.useragent, args.uuid)
      rescue InternalError => ouch
        result.ouch = ouch
      end
      write_result(result, oprot, 'login', seqid)
    end

    def process_getNextPlayer(seqid, iprot, oprot)
      args = read_args(iprot, GetNextPlayer_args)
      result = GetNextPlayer_result.new()
      result.success = @handler.getNextPlayer(args.sessionID)
      write_result(result, oprot, 'getNextPlayer', seqid)
    end

  end

  # HELPER FUNCTIONS AND STRUCTURES

  class Login_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    USERNAME = 1
    PASSWORD = 2
    VERSION = 3
    USERAGENT = 4
    UUID = 5

    FIELDS = {
      USERNAME => {:type => ::Thrift::Types::STRING, :name => 'username'},
      PASSWORD => {:type => ::Thrift::Types::STRING, :name => 'password'},
      VERSION => {:type => ::Thrift::Types::I32, :name => 'version'},
      USERAGENT => {:type => ::Thrift::Types::STRING, :name => 'useragent'},
      UUID => {:type => ::Thrift::Types::STRING, :name => 'uuid'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class Login_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0
    OUCH = 1

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ProfileData},
      OUCH => {:type => ::Thrift::Types::STRUCT, :name => 'ouch', :class => InternalError}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class GetNextPlayer_args
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SESSIONID = 1

    FIELDS = {
      SESSIONID => {:type => ::Thrift::Types::STRING, :name => 'sessionID'}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

  class GetNextPlayer_result
    include ::Thrift::Struct, ::Thrift::Struct_Union
    SUCCESS = 0

    FIELDS = {
      SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => PlayerData}
    }

    def struct_fields; FIELDS; end

    def validate
    end

    ::Thrift::Struct.generate_accessors self
  end

end

