defmodule ExJsonSchema.Schema.Root do
  defstruct schema: %{},
            refs: %{},
            definitions: %{},
            location: :root,
            version: nil


  @type t :: %ExJsonSchema.Schema.Root{
          schema: ExJsonSchema.Schema.resolved(),
          refs: %{String.t() => ExJsonSchema.Schema.resolved()},
          location: :root | String.t(),
          definitions: %{String.t() => ExJsonSchema.Schema.resolved()},
          version: non_neg_integer | nil
        }
end
