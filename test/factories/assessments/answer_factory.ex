defmodule Cadet.Assessments.AnswerFactory do
  @moduledoc """
  Factory for the Answer entity
  """

  defmacro __using__(_opts) do
    quote do
      alias Cadet.Assessments.Answer

      def answer_factory do
        %Answer{
          answer: %{},
          autograding_status: :none,
          comment: Faker.Lorem.Shakespeare.En.romeo_and_juliet()
        }
      end

      def programming_answer_factory do
        %{
          code: sequence(:code, &"alert(#{&1})")
        }
      end

      def mcq_answer_factory do
        %{
          choice_id: Enum.random(0..2)
        }
      end
    end
  end
end
