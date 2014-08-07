class AddPasswordDigestToUsres < ActiveRecord::Migration
  def change
    add_column :usres, :password_digest, :string
  end
end
