module Stretch
  class Client

    def filevault_enabled?
      output = `diskutil corestorage list`
      check_diskutil_for_filevault(output)
    end

    def check_diskutil_for_filevault(output)
      match_data = output.match(/Encryption Type:\s*(.*+)$/)
      encryption_type = match_data && match_data[1]

      encryption_type == 'AES-XTS'
    end

  end
end
