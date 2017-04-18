defmodule Bitcoin.ChainParams.Bitcoin do
  @moduledoc """
    List of constants associated with the Bitcoin mainnet.

    https://github.com/bitcoin/bitcoin/blob/master/src/chainparams.cpp
  """

  defmacro __using__(_opts) do
    quote do

      @genesis_block "0100000000000000000000000000000000000000000000000000000000000000000000003BA3EDFD7A7B12B27AC72C3E67768F617FC81BC3888A51323A9FB8AA4B1E5E4A29AB5F49FFFF001D1DAC2B7C0101000000010000000000000000000000000000000000000000000000000000000000000000FFFFFFFF4D04FFFF001D0104455468652054696D65732030332F4A616E2F32303039204368616E63656C6C6F72206F6E206272696E6B206F66207365636F6E64206261696C6F757420666F722062616E6B73FFFFFFFF0100F2052A01000000434104678AFDB0FE5548271967F1A67130B7105CD6A828E03909A67962E0EA1F61DEB649F6BC3F4CEF38C4F35504E51EC112DE5C384DF7BA0B8D578A4C702B6BF11D5FAC00000000" |> Base.decode16! |> Bitcoin.Protocol.Messages.Block.parse

      # 000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f
      @genesis_hash <<111, 226, 140, 10, 182, 241, 179, 114, 193, 166, 162, 70, 174, 99, 247, 79, 147, 30, 131, 101, 225, 90, 8, 156, 104, 214, 25, 0, 0, 0, 0, 0>>

      @network_magic_bytes <<0xF9, 0xBE, 0xB4, 0xD9>>

      @default_listen_port 8333

      @default_rpc_port 8332

    end
  end
end
