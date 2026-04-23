class Schedule < ApplicationRecord
  validates :title, presence: true, length: { maximum: 20 }
  validates :start_date, presence: true
  validates :end_date, presence: true

  validates :description,
  length: {
    maximum: 500,
    message: "スケジュールメモは500文字以内で入力してください"
  }

  validate :end_date_after_start_date
  def end_date_after_start_date
    return if start_date.blank? || end_date.blank?

    if end_date < start_date
      errors.add(:end_date, "終了日は開始日以降の日付で選択してください。")
    end
  end
end
