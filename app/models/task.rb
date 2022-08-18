class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'not-assigned', 'in-progress', 'complete'] }

  STATUS_OPTIONS = [
    ['Not Started', 'not-started'],
    ['Not Assigned', 'not-assigned'],
    ['In Progress', 'in-progress'],
    ['Complete', 'complete']
  ]

  def badge_color
    case status
    when 'not-assigned'
      'secondary'
    when 'not-started'
      'secondary'
    when 'in-progress'
      'info'
    when 'complete'
      'success'
    end
  end

  def complete?
    status == 'complete'
  end

  def in_progress?
    status == 'in-progress'
  end

  def not_started?
    status == 'not-started'
  end

  def not_assigned?
    status == 'not-assigned'
  end
end
