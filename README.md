# ArgoCD Patch Deployment Action
This Actions will call the ArgoCD Application to update the following annotations:

* gitBranch
* commitID
* lastUpdated

## Usage
```yaml
- name: Update Deployment	 
  uses: nrccua/action-argocd@main	  
  env:  
    SERVER: ${{secrets.ARGO_SERVER}}
    TOKEN: ${{ secrets.ARGO_TOKEN }}	 
    APP: ${{secrets.ARGO_APP}}
    COMMIT_ID: ${{github.sha}}	 
    BRANCH: ${{github.ref}}
```
