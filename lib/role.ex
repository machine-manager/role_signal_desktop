alias Converge.Util

defmodule RoleSignalDesktop do
	require Util
	Util.declare_external_resources("files")

	def role(_tags \\ []) do
		%{
			apt_keys:         [Util.content("files/apt_keys/Signal.gpg")],
			apt_sources:      ["deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main"],
			desired_packages: ["signal-desktop"],
		}
	end
end
