# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :items, [Types::ItemType], null: false,
                                     description: 'Returns a list of items in the martian library'

    def items
      Item.all
    end
  end
end
