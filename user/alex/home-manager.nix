{
  username,
  inputs,
  stateVersion,
}: {
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;

    extraSpecialArgs = {inherit inputs;};

    users.${username} = (
      (import ./home {})
      // (import ../../common/mkHome.nix {
        inherit username;
        inherit stateVersion;
        isNixos = true;
      })
    );
  };
}
