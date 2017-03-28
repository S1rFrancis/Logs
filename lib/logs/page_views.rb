class PageViews
  attr_reader :logs

  def initialize(logs)
    @logs = logs
  end

  def views
    count = logs.each.inject({}) do |page_views, log|
       if page_views[log.page].nil?
         page_views[log.page] = 1
       else
         page_views[log.page] += 1
       end
      page_views
    end
    count.sort_by { |key, count| count }.reverse.to_h
  end

  def uniqueViews
    count = logs.each.inject({}) do |page_views, log|
       if page_views[log.page].nil?
         page_views[log.page] = []
         page_views[log.page] << log.to_s
       else
         page_views[log.page] << log.to_s
       end
      page_views
    end
    count.each { |page, records| records.uniq! }

    count.each do |page, records|
      count[page] = records.size
    end

    count.sort_by { |key, count| count }.reverse.to_h
  end
end
