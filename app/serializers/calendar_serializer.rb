class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :text, :description, :startDate, :endDate, :recurrenceRule, :allDay
end
