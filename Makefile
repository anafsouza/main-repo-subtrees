# Caminhos dos teamos
TEAM_A_PREFIX=subrepo
TEAM_B_PREFIX=subrepo-second
# TEAM_C_PREFIX=teams/team-c
# TEAM_D_PREFIX=teams/team-d

# Nomes dos remotes
TEAM_A_REMOTE=https://github.com/anafsouza/subrepo 
TEAM_B_REMOTE=https://github.com/anafsouza/subrepo-number-2
# TEAM_C_REMOTE=team-c
# TEAM_D_REMOTE=team-d

# Branch de origem
BRANCH=main

# =======================
# PULL (traz do subrepo)
# =======================
pull-team-a:
	git subtree pull --prefix=$(TEAM_A_PREFIX) $(TEAM_A_REMOTE) $(BRANCH) --squash

pull-team-b:
	git subtree pull --prefix=$(TEAM_B_PREFIX) $(TEAM_B_REMOTE) $(BRANCH) --squash

# pull-team-c:
# 	git subtree pull --prefix=$(TEAM_C_PREFIX) $(TEAM_C_REMOTE) $(BRANCH) --squash

# pull-team-d:
# 	git subtree pull --prefix=$(TEAM_D_PREFIX) $(TEAM_D_REMOTE) $(BRANCH) --squash

# =======================
# PUSH (envia para subrepo)
# =======================
push-team-a:
	git subtree push --prefix=$(TEAM_A_PREFIX) $(TEAM_A_REMOTE) $(BRANCH)

push-team-b:
	git subtree push --prefix=$(TEAM_B_PREFIX) $(TEAM_B_REMOTE) $(BRANCH)

# push-team-c:
# 	git subtree push --prefix=$(TEAM_C_PREFIX) $(TEAM_C_REMOTE) $(BRANCH)

# push-team-d:
# 	git subtree push --prefix=$(TEAM_D_PREFIX) $(TEAM_D_REMOTE) $(BRANCH)

# =======================
# Atalhos em grupo
# =======================
pull-all: pull-team-a pull-team-b 
push-all: push-team-a push-team-b 