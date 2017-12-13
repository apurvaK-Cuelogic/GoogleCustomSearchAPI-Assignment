require 'google_custom_search_api'
class API
  module Adapter
    module GoogleAPI
      def self.getData(keyword)
        results=GoogleCustomSearchApi.search(keyword)
        return results
      end
    end
  end
  def getData(keyword)
    self.adapter.getData(keyword)
  end
  def adapter
    return @adapter if @adapter
    self.adapter = :GoogleAPI
    @adapter
  end
  def adapter=(adapter)
    @adapter = API::Adapter.const_get(adapter.to_s)
  end
end
