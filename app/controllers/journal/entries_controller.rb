class Journal::EntriesController < ApplicationController
  def show
    @date = Date.parse(params[:id])
    @entry = current_user.journal_entries.includes(:responses).find_or_initialize_by(date: @date)
    if @entry.new_record?
      Journal::Entry::QUESTIONS.values.each_with_index do |question, ind|
        @entry.responses.build(question: question, order: ind)
      end
    end
  end

  def create
    current_user.journal_entries.create(entry_params)
  end

  def update
    @entry = current_user.journal_entries.find(params[:id])
    @entry.update(entry_params)
  end

  private

  def entry_params
    params.require(:journal_entry).permit(:date, responses_attributes: %i[id question answer order])
  end
end
