module Ahub
  class List
    # attr_reader :list, :listCount, :name, :page, :pageCount, :pageSize, :sort, :sorts, :totalCount
    attr_reader :list,
      :list_count,
      :list_class,
      :name,
      :page,
      :page_count,
      :page_size,
      :sort,
      :sorts,
      :total_count

    attr_accessor :page_size

    def initialize(base_url:, list_class:)
      @base_url = base_url
      @list_class = list_class
      @page_size = 30
      @sort=''
    end

    def get_first_page(sort:)
      @page = 1
      get_page(1)
    end

    def get_next_page
      return false if page > page_count
      @page+=1
      get_page(@page)
    end

    def get_previous_page
      return false if page == 0
      @page-=1
      get_page(@page)
    end

    def get_page(requested_page)
      @response = JSON.parse(
        RestClient.get(
          "#{@base_url}?page=#{requested_page}&pageSize=#{@page_size}&sort=#{@sort}",
          Ahub::APIResource.admin_headers
        ),
        symbolize_names:true
      )

      if has_resources = !response[:list].empty?
        process_response
      end

      has_resources
    end

    def sort=(sort_value)
      # raise "Unknown Sort! Known sorts are: #{sorts.join(', ')}" unless sorts.include?(sort_value)
    end

    private

    def process_response
      # @list_count =
      # @page =
      # @page_count =
      # @page_size =
      # @sort =
      # @total_count =
    end
  end
end