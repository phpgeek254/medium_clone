defmodule MediumCloneWeb.Schema.Types.PostType do
  use Absinthe.Schema.Notation
  alias MediumClone.Repo
  import Ecto.Adapters.SQL

  object :post_type do
    field :id, :id
    field :title, :string
    field :content, :string
    field :published, :boolean
    field(:user, :user_type, resolve: assoc(:user))
  end

  input_object :post_input_type do
    field(:title, non_null(:string))
    field(:content, non_null(:string))
    field(:published, non_null(:boolean))
  end


end