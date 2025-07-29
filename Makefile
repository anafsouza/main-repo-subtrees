

add-remotes:
	git remote add subrepo https://github.com/anafsouza/subrepo.git || true
	git remote add subrepo-number-2 https://github.com/anafsouza/subrepo-number-2.git || true


# Caminhos dos teams
TEAM_A_PREFIX=subrepo
TEAM_B_PREFIX=subrepo-number-2
# TEAM_C_PREFIX=teams/team-c
# TEAM_D_PREFIX=teams/team-d

# Nomes dos remotes
TEAM_A_REMOTE=subrepo 
TEAM_B_REMOTE=subrepo-number-2
# TEAM_C_REMOTE=team-c
# TEAM_D_REMOTE=team-d

# Branch de origem
BRANCH=main

# =======================
# ADD (via subtree)
# =======================
add-subtrees:
	@if [ ! -d "subrepo" ]; then \
		echo "Adding subtree: subrepo"; \
		git subtree add --prefix=$(TEAM_A_PREFIX) $(TEAM_A_REMOTE) $(BRANCH); \
	else \
		echo "Subtree 'subrepo' already exists, skipping."; \
	fi

	@if [ ! -d "subrepo-number-2" ]; then \
		echo "Adding subtree: subrepo-number-2"; \
		git subtree add --prefix=$(TEAM_B_PREFIX) $(TEAM_B_REMOTE) $(BRANCH) --squash; \
	else \
		echo "Subtree 'subrepo-number-2' already exists, skipping."; \
	fi

# =======================
# PULL (traz do subrepo)
# =======================
pull-subrepo:
	git fetch $(TEAM_A_REMOTE) $(BRANCH)
	git subtree pull --prefix=$(TEAM_A_PREFIX) $(TEAM_A_REMOTE) $(BRANCH) --squash || echo "Nothing to pull"

pull-subrepo-number-2:
	git fetch $(TEAM_B_REMOTE) $(BRANCH)
	git subtree pull --prefix=$(TEAM_B_PREFIX) $(TEAM_B_REMOTE) $(BRANCH) --squash || echo "Nothing to pull"

# pull-team-c:
# 	git subtree pull --prefix=$(TEAM_C_PREFIX) $(TEAM_C_REMOTE) $(BRANCH) --squash

# pull-team-d:
# 	git subtree pull --prefix=$(TEAM_D_PREFIX) $(TEAM_D_REMOTE) $(BRANCH) --squash

# =======================
# PUSH (envia para subrepo)
# =======================
push-subrepo:
	git subtree push --prefix=$(TEAM_A_PREFIX) $(TEAM_A_REMOTE) $(BRANCH)

push-subrepo-number-2:
	git subtree push --prefix=$(TEAM_B_PREFIX) $(TEAM_B_REMOTE) $(BRANCH)

# push-team-c:
# 	git subtree push --prefix=$(TEAM_C_PREFIX) $(TEAM_C_REMOTE) $(BRANCH)

# push-team-d:
# 	git subtree push --prefix=$(TEAM_D_PREFIX) $(TEAM_D_REMOTE) $(BRANCH)

# =======================
# Atalhos em grupo
# =======================
pull-all: pull-subrepo pull-subrepo-number-2 
push-all: push-subrepo push-subrepo-number-2 


